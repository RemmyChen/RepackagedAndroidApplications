package com.chenremmyexample.hackedtoast;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.AppCompatActivity;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);

        Handler handler = new Handler();
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                setTheme(R.style.AppTheme);
                getWindow().setBackgroundDrawable(new ColorDrawable(Color.WHITE));
                setContentView(R.layout.activity_main);
                Toast.makeText(getApplicationContext(), "Gotta love ads!", Toast.LENGTH_LONG).show();
            }
        }, 9000);


    }
}

