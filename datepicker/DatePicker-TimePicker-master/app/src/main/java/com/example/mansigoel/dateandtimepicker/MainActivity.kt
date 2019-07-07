package com.example.mansigoel.dateandtimepicker

import android.os.Bundle
import android.support.v7.app.AppCompatActivity
import android.view.View
import butterknife.ButterKnife
import com.example.mansigoel.dateandtimepicker.R.layout.activity_main
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(activity_main)
        ButterKnife.bind(this)

        tv_date!!.text = currentDateAndTime

        tv_change_time!!.setOnClickListener {
            calendar_container!!.visibility = View.VISIBLE
            tv_date!!.visibility = View.INVISIBLE
            tv_change_time!!.visibility = View.INVISIBLE
        }

        btn_set!!.setOnClickListener {
            tv_date!!.text = currentDateAndTime
            calendar_container!!.visibility = View.INVISIBLE
            tv_date!!.visibility = View.VISIBLE
            tv_change_time!!.visibility = View.VISIBLE
        }
    }

    val currentDateAndTime: String
        get() {
            val builder = StringBuilder()
            //adding 0 to single digit day number
            if (datePicker!!.dayOfMonth.toString().length == 1) {
                builder.append("0" + datePicker!!.dayOfMonth + " ")
            } else {
                builder.append(datePicker!!.dayOfMonth.toString() + " ")
            }
            //formatting month name in "JAN" format
            builder.append(monthFormatter(datePicker!!.month + 1))   //month is 0 based
            builder.append(" " + datePicker!!.year + " at ")

            //adding 0 to single digit hour
            if (timePicker!!.currentHour.toString().length == 1) {
                builder.append("0" + timePicker!!.currentHour + ":")
            } else {
                builder.append(timePicker!!.currentHour.toString() + ":")
            }
            //adding 0 to single digit minute
            if (timePicker!!.currentMinute.toString().length == 1) {
                builder.append("0" + timePicker!!.currentMinute)
            } else {
                builder.append(timePicker!!.currentMinute)
            }
            return builder.toString()
        }


    fun monthFormatter(month: Int): String? {
        when (month) {
            1 -> return "JAN"
            2 -> return "FEB"
            3 -> return "MAR"
            4 -> return "APR"
            5 -> return "MAY"
            6 -> return "JUN"
            7 -> return "JUL"
            8 -> return "AUG"
            9 -> return "SEP"
            10 -> return "OCT"
            11 -> return "NOV"
            12 -> return "DEC"
        }
        return null
    }
}