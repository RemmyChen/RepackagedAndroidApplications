package com.xiaomi.ad.demo;

import android.Manifest;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;

import com.xiaomi.ad.mimo.demo.R;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // 如果api >= 23 需要显式申请权限
        if (Build.VERSION.SDK_INT >= 23) {
            if (ContextCompat.checkSelfPermission(this, Manifest.permission.READ_PHONE_STATE) != PackageManager.PERMISSION_GRANTED
                    || ContextCompat.checkSelfPermission(this, Manifest.permission.WRITE_EXTERNAL_STORAGE) != PackageManager.PERMISSION_GRANTED
                    || ContextCompat.checkSelfPermission(this, Manifest.permission.INTERNET) != PackageManager.PERMISSION_GRANTED) {
                ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE,
                        Manifest.permission.READ_PHONE_STATE, Manifest.permission.INTERNET}, 0);
            }
        }

        setContentView(R.layout.main);

        findViewById(R.id.vertical_splash).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(MainActivity.this, VerticalSplashAdActivity.class);
                startActivity(i);
            }
        });

        findViewById(R.id.horizontal_splash).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(MainActivity.this, HorizonSplashAdActivity.class);
                startActivity(i);
            }
        });
        findViewById(R.id.vertical_interstitial).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                //进入插屏广告示例Activity
                Intent i = new Intent(MainActivity.this, VerticalInterstitialActivity.class);
                startActivity(i);
            }
        });

        findViewById(R.id.horizontal_interstitial).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                //进入插屏广告示例Activity
                Intent i = new Intent(MainActivity.this, HorizonInterstitialActivity.class);
                startActivity(i);
            }
        });

        findViewById(R.id.single_news_feed).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(MainActivity.this, SingleNewsFeedActivity.class);
                startActivity(i);
            }
        });

        findViewById(R.id.list_news_feed).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(MainActivity.this, NewsFeedListActivity.class);
                startActivity(i);
            }
        });

        findViewById(R.id.banner).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(MainActivity.this, BannerActivity.class);
                startActivity(i);
            }
        });

        findViewById(R.id.plaster_video).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(MainActivity.this, PlasterVideoActivity.class);
                startActivity(i);
            }
        });

        findViewById(R.id.list_video).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent i = new Intent(MainActivity.this, NewsFeedVideoListActivity.class);
                startActivity(i);
            }
        });
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        return super.dispatchKeyEvent(event);
    }

}
