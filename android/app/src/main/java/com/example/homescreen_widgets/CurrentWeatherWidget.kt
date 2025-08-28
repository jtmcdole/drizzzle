// Import will depend on App ID.
package com.example.drizzzle

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.widget.RemoteViews
import android.content.Intent
import android.app.PendingIntent
import java.io.File
import es.antonborri.home_widget.HomeWidgetPlugin


/**
 * Implementation of App Widget functionality.
 */
class CurrentWeatherWidget : AppWidgetProvider() {
    override fun onUpdate(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetIds: IntArray,
    ) {
        for (appWidgetId in appWidgetIds) {
            val intent = Intent(context, MainActivity::class.java)
            val pendingIntent = PendingIntent.getActivity(
                context, 0, intent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
            )
            val widgetData = HomeWidgetPlugin.getData(context)

            val views = RemoteViews(context.packageName, R.layout.current_weather_widget).apply {
                setOnClickPendingIntent(R.id.widget_container, pendingIntent)

                // temperature
                val temperature = widgetData.getString(PrefKeys.TEMPERATURE_KEY, null)
                setTextViewText(R.id.current_temperature_text, temperature ?: "?")

                // city name
                val city = widgetData.getString(PrefKeys.CITY_NAME_KEY, null)
                setTextViewText(R.id.current_city_text, city ?: "?")
                
                // weather condition description
                val weatherCondition = widgetData.getString(PrefKeys.WEATHER_CONDITION_KEY, null)
                setTextViewText(R.id.current_weather_text, weatherCondition ?: "?")
                
                // precipitation chance
                val precipitationProbability = widgetData.getString(PrefKeys.PRECIPITATION_PROBABILITY,null)
                setTextViewText(R.id.current_precipitation_text,precipitationProbability ?: "?")

                // weather icon
                val weatherIconId = widgetData.getInt(PrefKeys.WEATHER_ICON_ID_KEY, 100)
                val resourceName = getResourceName(weatherIconId)
                val drawableId = context.resources.getIdentifier(resourceName, "drawable", context.packageName)
                setImageViewResource(R.id.current_weather_icon,drawableId)
            }

            // Now use 'views' outside to update the widget
            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
}

object PrefKeys{
    const val TEMPERATURE_KEY = "current_temperature_text"
    const val CITY_NAME_KEY = "current_city_text"
    const val WEATHER_CONDITION_KEY = "current_weather_text"
    const val WEATHER_ICON_ID_KEY = "current_weather_icon_id"
    const val PRECIPITATION_PROBABILITY = "precipitation_key"
}

fun getResourceName(id: Int): String {
    return when(id){
        0 -> "clear"
        1 -> "clear0"
        2 -> "clear1"
        3 -> "fog"
        4 -> "fog0"
        5 -> "fog1"
        6 -> "hail"
        7 -> "hail0"
        8 -> "hail1"
        9 -> "lsnow"
        10 -> "lsnow0"
        11 -> "lsnow1"
        12 -> "mcloudy"
        13 -> "mcloudy0"
        14 -> "mcloudy1"
        15 -> "pcloudy"
        16 -> "pcloudy0"
        17 -> "pcloudy1"
        18 -> "rain"
        19 -> "rain0"
        20 -> "rain1"
        21 -> "shower"
        22 -> "shower0"
        23 -> "shower1"
        24 -> "snow"
        25 -> "snow0"
        26 -> "snow1"
        27 -> "tshower"
        28 -> "tshower0"
        29 -> "tshower1"
        30 -> "tstorm"
        31 -> "tstorm0"
        32 -> "tstorm1"
        else -> "unknown"
    }
}