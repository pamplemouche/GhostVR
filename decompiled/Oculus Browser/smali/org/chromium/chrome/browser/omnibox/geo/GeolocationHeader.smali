.class public Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:J = 0x7fffffffffffffffL


# direct methods
.method public static a()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    :try_start_0
    sget-object v2, LzT;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "location_mode"

    .line 3
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    if-ne v2, v0, :cond_2

    return v3

    :cond_2
    return v1

    :catch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "GeolocationHeader"

    const-string v3, "Error getting the LOCATION_MODE"

    .line 4
    invoke-static {v2, v3, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public static a(Ljava/lang/String;Lorg/chromium/chrome/browser/tab/Tab;)Ljava/lang/String;
    .locals 22

    move-object/from16 v1, p1

    .line 11
    iget-boolean v2, v1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    const/4 v0, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_2

    .line 12
    :cond_0
    invoke-static/range {p0 .. p0}, LJ/N;->MCF9pcXT(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v0, 0x2

    const/4 v9, 0x2

    goto :goto_2

    .line 13
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 14
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "https"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v0, 0x3

    const/4 v9, 0x3

    goto :goto_2

    .line 15
    :cond_2
    invoke-static {}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->hasGeolocationPermission()Z

    move-result v10

    if-nez v10, :cond_3

    .line 16
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a(I)V

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 18
    invoke-static {v0, v10, v2}, LJ/N;->M0_ThS1y(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    new-instance v0, LcC0;

    .line 20
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v5, v9, v6, v2}, LcC0;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 21
    invoke-virtual {v0}, LcC0;->a()Ljava/lang/Integer;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v8

    if-eqz v0, :cond_5

    .line 23
    invoke-static {v7}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a(I)V

    :goto_1
    const/4 v0, 0x4

    const/4 v9, 0x4

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_2
    const-string v10, "android.permission.ACCESS_COARSE_LOCATION"

    if-nez v9, :cond_f

    .line 24
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 25
    invoke-static {v0, v10}, LZp0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    move-object v0, v6

    goto :goto_4

    :cond_6
    const-string v11, "location"

    .line 26
    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/LocationManager;

    const-string v12, "network"

    .line 27
    invoke-virtual {v11, v12}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v12

    const-string v13, "android.permission.ACCESS_FINE_LOCATION"

    .line 28
    invoke-static {v0, v13}, LZp0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "gps"

    .line 29
    invoke-virtual {v11, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v6

    .line 30
    :goto_3
    invoke-static {v12, v0}, LZp0;->a(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_8

    .line 31
    invoke-static {v5}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a(I)V

    const-wide v11, 0x7fffffffffffffffL

    :goto_5
    move-object v3, v0

    goto :goto_6

    .line 32
    :cond_8
    invoke-static {v0}, LZp0;->a(Landroid/location/Location;)J

    move-result-wide v11

    const-wide/32 v13, 0x5265c00

    cmp-long v15, v11, v13

    if-lez v15, :cond_9

    .line 33
    invoke-static {v4}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a(I)V

    move-object v3, v6

    goto :goto_6

    .line 34
    :cond_9
    invoke-static {v3}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a(I)V

    goto :goto_5

    .line 35
    :goto_6
    invoke-static {}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a()I

    move-result v0

    if-eqz v0, :cond_b

    if-ne v0, v8, :cond_a

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v0, 0x1

    :goto_8
    if-eqz v0, :cond_e

    if-eqz v3, :cond_c

    .line 36
    invoke-static {v3}, LZp0;->a(Landroid/location/Location;)J

    move-result-wide v13

    const-wide/32 v15, 0x493e0

    cmp-long v0, v13, v15

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_e

    .line 37
    sget-object v13, LzT;->a:Landroid/content/Context;

    .line 38
    invoke-static {}, LDq0;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 39
    sget-object v0, LDq0;->a:LBq0;

    goto :goto_b

    .line 40
    :cond_d
    :try_start_0
    invoke-static {v13}, Lwq0;->a(Landroid/content/Context;)LBq0;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v14, v0

    new-array v0, v8, [Ljava/lang/Object;

    .line 41
    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v7

    const-string v14, "VNTracker"

    const-string v15, "Failed to get the visible networks. Error: "

    invoke-static {v14, v15, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 42
    :goto_a
    invoke-static {v13}, LDq0;->a(Landroid/content/Context;)V

    goto :goto_b

    :cond_e
    move-object v0, v6

    goto :goto_b

    :cond_f
    const-wide v11, 0x7fffffffffffffffL

    move-object v0, v6

    move-object v3, v0

    .line 43
    :goto_b
    invoke-static {}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a()I

    move-result v13

    .line 44
    invoke-static {}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->hasGeolocationPermission()Z

    move-result v14

    if-eqz v14, :cond_10

    const/4 v1, 0x0

    goto :goto_c

    .line 45
    :cond_10
    iget-object v1, v1, Lorg/chromium/chrome/browser/tab/Tab;->e:Lorg/chromium/ui/base/WindowAndroid;

    .line 46
    invoke-virtual {v1, v10}, Lorg/chromium/ui/base/WindowAndroid;->canRequestPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_c

    :cond_11
    const/4 v1, 0x2

    .line 47
    :goto_c
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 48
    new-instance v14, LcC0;

    .line 49
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v14, v5, v10, v6, v2}, LcC0;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 50
    invoke-virtual {v14}, LcC0;->a()Ljava/lang/Integer;

    move-result-object v6

    .line 51
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v8, :cond_13

    if-eq v6, v4, :cond_12

    const/4 v6, 0x2

    goto :goto_d

    :cond_12
    const/4 v6, 0x1

    goto :goto_d

    :cond_13
    const/4 v6, 0x0

    :goto_d
    if-eqz v3, :cond_14

    const/4 v10, 0x1

    goto :goto_e

    :cond_14
    const/4 v10, 0x0

    :goto_e
    if-ne v9, v8, :cond_15

    goto/16 :goto_10

    :cond_15
    if-ne v9, v5, :cond_16

    const/16 v9, 0x2b

    goto/16 :goto_f

    :cond_16
    if-ne v9, v4, :cond_17

    const/16 v9, 0x2c

    goto/16 :goto_f

    :cond_17
    if-nez v13, :cond_22

    if-nez v1, :cond_1c

    if-nez v6, :cond_19

    if-eqz v10, :cond_18

    const/4 v9, 0x1

    goto/16 :goto_f

    :cond_18
    const/4 v9, 0x2

    goto/16 :goto_f

    :cond_19
    if-ne v6, v8, :cond_1b

    if-eqz v10, :cond_1a

    const/4 v9, 0x3

    goto/16 :goto_f

    :cond_1a
    const/4 v9, 0x4

    goto/16 :goto_f

    :cond_1b
    if-ne v6, v5, :cond_41

    const/4 v9, 0x5

    goto/16 :goto_f

    :cond_1c
    if-ne v1, v8, :cond_1f

    if-nez v6, :cond_1d

    const/4 v9, 0x6

    goto/16 :goto_f

    :cond_1d
    if-ne v6, v8, :cond_1e

    const/4 v9, 0x7

    goto/16 :goto_f

    :cond_1e
    if-ne v6, v5, :cond_41

    const/16 v9, 0x8

    goto/16 :goto_f

    :cond_1f
    if-ne v1, v5, :cond_41

    if-nez v6, :cond_20

    const/16 v9, 0x9

    goto/16 :goto_f

    :cond_20
    if-ne v6, v8, :cond_21

    const/16 v9, 0xa

    goto/16 :goto_f

    :cond_21
    if-ne v6, v5, :cond_41

    const/16 v9, 0xb

    goto/16 :goto_f

    :cond_22
    if-ne v13, v8, :cond_2d

    if-nez v1, :cond_27

    if-nez v6, :cond_24

    if-eqz v10, :cond_23

    const/16 v9, 0xc

    goto/16 :goto_f

    :cond_23
    const/16 v9, 0xd

    goto/16 :goto_f

    :cond_24
    if-ne v6, v8, :cond_26

    if-eqz v10, :cond_25

    const/16 v9, 0xe

    goto/16 :goto_f

    :cond_25
    const/16 v9, 0xf

    goto/16 :goto_f

    :cond_26
    if-ne v6, v5, :cond_41

    const/16 v9, 0x10

    goto/16 :goto_f

    :cond_27
    if-ne v1, v8, :cond_2a

    if-nez v6, :cond_28

    const/16 v9, 0x11

    goto/16 :goto_f

    :cond_28
    if-ne v6, v8, :cond_29

    const/16 v9, 0x12

    goto/16 :goto_f

    :cond_29
    if-ne v6, v5, :cond_41

    const/16 v9, 0x13

    goto/16 :goto_f

    :cond_2a
    if-ne v1, v5, :cond_41

    if-nez v6, :cond_2b

    const/16 v9, 0x14

    goto/16 :goto_f

    :cond_2b
    if-ne v6, v8, :cond_2c

    const/16 v9, 0x15

    goto/16 :goto_f

    :cond_2c
    if-ne v6, v5, :cond_41

    const/16 v9, 0x16

    goto/16 :goto_f

    :cond_2d
    if-ne v13, v5, :cond_38

    if-nez v1, :cond_32

    if-nez v6, :cond_2f

    if-eqz v10, :cond_2e

    const/16 v9, 0x17

    goto/16 :goto_f

    :cond_2e
    const/16 v9, 0x18

    goto/16 :goto_f

    :cond_2f
    if-ne v6, v8, :cond_31

    if-eqz v10, :cond_30

    const/16 v9, 0x19

    goto/16 :goto_f

    :cond_30
    const/16 v9, 0x1a

    goto/16 :goto_f

    :cond_31
    if-ne v6, v5, :cond_41

    const/16 v9, 0x1b

    goto/16 :goto_f

    :cond_32
    if-ne v1, v8, :cond_35

    if-nez v6, :cond_33

    const/16 v9, 0x1c

    goto/16 :goto_f

    :cond_33
    if-ne v6, v8, :cond_34

    const/16 v9, 0x1d

    goto :goto_f

    :cond_34
    if-ne v6, v5, :cond_41

    const/16 v9, 0x1e

    goto :goto_f

    :cond_35
    if-ne v1, v5, :cond_41

    if-nez v6, :cond_36

    const/16 v9, 0x1f

    goto :goto_f

    :cond_36
    if-ne v6, v8, :cond_37

    const/16 v9, 0x20

    goto :goto_f

    :cond_37
    if-ne v6, v5, :cond_41

    const/16 v9, 0x21

    goto :goto_f

    :cond_38
    if-ne v13, v4, :cond_41

    if-nez v1, :cond_3b

    if-nez v6, :cond_39

    const/16 v9, 0x22

    goto :goto_f

    :cond_39
    if-ne v6, v8, :cond_3a

    const/16 v9, 0x23

    goto :goto_f

    :cond_3a
    if-ne v6, v5, :cond_41

    const/16 v9, 0x24

    goto :goto_f

    :cond_3b
    if-ne v1, v8, :cond_3e

    if-nez v6, :cond_3c

    const/16 v9, 0x25

    goto :goto_f

    :cond_3c
    if-ne v6, v8, :cond_3d

    const/16 v9, 0x26

    goto :goto_f

    :cond_3d
    if-ne v6, v5, :cond_41

    const/16 v9, 0x27

    goto :goto_f

    :cond_3e
    if-ne v1, v5, :cond_41

    if-nez v6, :cond_3f

    const/16 v9, 0x28

    goto :goto_f

    :cond_3f
    if-ne v6, v8, :cond_40

    const/16 v9, 0x29

    goto :goto_f

    :cond_40
    if-ne v6, v5, :cond_41

    const/16 v9, 0x2a

    goto :goto_f

    :cond_41
    const/4 v9, 0x0

    :goto_f
    const-string v10, "Geolocation.Header.PermissionState"

    const/16 v14, 0x2d

    .line 52
    invoke-static {v10, v9, v14}, LfV;->a(Ljava/lang/String;II)V

    :goto_10
    const-wide/16 v9, 0x3e8

    if-eq v13, v4, :cond_4f

    if-eq v1, v5, :cond_4f

    if-eq v6, v5, :cond_4f

    if-nez v2, :cond_4f

    const-string v1, "GeolocationHeader"

    const-string v2, "Unexpected locationSource: "

    if-nez v13, :cond_42

    const-string v4, "Geolocation.Header.LocationAge.HighAccuracy"

    goto :goto_11

    :cond_42
    if-ne v13, v5, :cond_43

    const-string v4, "Geolocation.Header.LocationAge.GpsOnly"

    goto :goto_11

    :cond_43
    if-ne v13, v8, :cond_45

    const-string v4, "Geolocation.Header.LocationAge.BatterySaving"

    .line 53
    :goto_11
    div-long/2addr v11, v9

    const-wide/32 v14, 0x7fffffff

    cmp-long v6, v11, v14

    if-ltz v6, :cond_44

    const v6, 0x7fffffff

    goto :goto_12

    :cond_44
    long-to-int v6, v11

    :goto_12
    const v11, 0x278d00

    const/16 v12, 0x32

    .line 54
    invoke-static {v4, v6, v8, v11, v12}, LfV;->a(Ljava/lang/String;IIII)V

    goto :goto_13

    .line 55
    :cond_45
    invoke-static {v2, v13}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v1, v4, v6}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :goto_13
    sget-wide v11, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a:J

    const-wide v14, 0x7fffffffffffffffL

    cmp-long v4, v11, v14

    if-nez v4, :cond_46

    const-wide/16 v11, 0x0

    goto :goto_14

    .line 57
    :cond_46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sget-wide v14, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a:J

    sub-long/2addr v11, v14

    :goto_14
    move-wide v15, v11

    if-eqz v3, :cond_47

    const/4 v4, 0x1

    goto :goto_15

    :cond_47
    const/4 v4, 0x0

    :goto_15
    if-eqz v13, :cond_4c

    if-eq v13, v8, :cond_4a

    if-eq v13, v5, :cond_48

    .line 58
    invoke-static {v2, v13}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    goto :goto_16

    :cond_48
    if-eqz v4, :cond_49

    const-string v1, "Geolocation.Header.TimeListening.GpsOnly.LocationAttached"

    goto :goto_16

    :cond_49
    const-string v1, "Geolocation.Header.TimeListening.GpsOnly.LocationNotAttached"

    goto :goto_16

    :cond_4a
    if-eqz v4, :cond_4b

    const-string v1, "Geolocation.Header.TimeListening.BatterySaving.LocationAttached"

    goto :goto_16

    :cond_4b
    const-string v1, "Geolocation.Header.TimeListening.BatterySaving.LocationNotAttached"

    goto :goto_16

    :cond_4c
    if-eqz v4, :cond_4d

    const-string v1, "Geolocation.Header.TimeListening.HighAccuracy.LocationAttached"

    goto :goto_16

    :cond_4d
    const-string v1, "Geolocation.Header.TimeListening.HighAccuracy.LocationNotAttached"

    :goto_16
    move-object v14, v1

    if-nez v14, :cond_4e

    goto :goto_17

    :cond_4e
    const-wide/16 v17, 0x1

    const-wide/32 v19, 0x2dc6c0

    const/16 v21, 0x32

    .line 59
    invoke-static/range {v14 .. v21}, LfV;->a(Ljava/lang/String;JJJI)V

    :cond_4f
    :goto_17
    if-nez v3, :cond_50

    const/4 v1, 0x0

    goto/16 :goto_18

    .line 60
    :cond_50
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    mul-long v1, v1, v9

    .line 61
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    const-wide v11, 0x416312d000000000L    # 1.0E7

    mul-double v9, v9, v11

    double-to-int v4, v9

    .line 62
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    mul-double v9, v9, v11

    double-to-int v6, v9

    .line 63
    invoke-virtual {v3}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float v3, v3, v9

    float-to-int v3, v3

    .line 64
    sget-object v9, Lcq0;->C:Lcq0;

    invoke-virtual {v9}, LTF;->c()LFF;

    move-result-object v9

    check-cast v9, Lbq0;

    .line 65
    invoke-virtual {v9}, LFF;->g()V

    .line 66
    iget-object v10, v9, LFF;->x:LTF;

    check-cast v10, Lcq0;

    .line 67
    iget v11, v10, Lcq0;->z:I

    or-int/2addr v11, v8

    iput v11, v10, Lcq0;->z:I

    .line 68
    iput v4, v10, Lcq0;->A:I

    .line 69
    invoke-virtual {v9}, LFF;->g()V

    .line 70
    iget-object v4, v9, LFF;->x:LTF;

    check-cast v4, Lcq0;

    .line 71
    iget v10, v4, Lcq0;->z:I

    or-int/2addr v5, v10

    iput v5, v4, Lcq0;->z:I

    .line 72
    iput v6, v4, Lcq0;->B:I

    .line 73
    invoke-virtual {v9}, LFF;->e()LTF;

    move-result-object v4

    check-cast v4, Lcq0;

    .line 74
    sget-object v5, Lfq0;->G:Lfq0;

    invoke-virtual {v5}, LTF;->c()LFF;

    move-result-object v5

    check-cast v5, Leq0;

    .line 75
    invoke-virtual {v5}, LFF;->g()V

    .line 76
    iget-object v6, v5, LFF;->x:LTF;

    check-cast v6, Lfq0;

    if-eqz v4, :cond_68

    .line 77
    iput-object v4, v6, Lfq0;->D:Lcq0;

    .line 78
    iget v4, v6, Lfq0;->z:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v6, Lfq0;->z:I

    .line 79
    sget-object v4, Liq0;->y:Liq0;

    .line 80
    invoke-virtual {v5, v4}, Leq0;->a(Liq0;)Leq0;

    sget-object v4, Lhq0;->y:Lhq0;

    .line 81
    invoke-virtual {v5, v4}, Leq0;->a(Lhq0;)Leq0;

    .line 82
    invoke-virtual {v5}, LFF;->g()V

    .line 83
    iget-object v4, v5, LFF;->x:LTF;

    check-cast v4, Lfq0;

    .line 84
    iget v6, v4, Lfq0;->z:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v4, Lfq0;->z:I

    .line 85
    iput-wide v1, v4, Lfq0;->C:J

    int-to-float v1, v3

    .line 86
    invoke-virtual {v5}, LFF;->g()V

    .line 87
    iget-object v2, v5, LFF;->x:LTF;

    check-cast v2, Lfq0;

    .line 88
    iget v3, v2, Lfq0;->z:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Lfq0;->z:I

    .line 89
    iput v1, v2, Lfq0;->E:F

    .line 90
    invoke-virtual {v5}, LFF;->e()LTF;

    move-result-object v1

    check-cast v1, Lfq0;

    .line 91
    invoke-virtual {v1}, LfF;->e()[B

    move-result-object v1

    const/16 v2, 0xa

    .line 92
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    :goto_18
    if-eqz v0, :cond_5e

    .line 93
    invoke-virtual {v0}, LBq0;->a()Z

    move-result v2

    if-eqz v2, :cond_51

    goto/16 :goto_1d

    .line 94
    :cond_51
    iget-object v2, v0, LBq0;->b:Lzq0;

    .line 95
    iget-object v3, v0, LBq0;->a:LAq0;

    .line 96
    iget-object v4, v0, LBq0;->d:Ljava/util/Set;

    .line 97
    iget-object v0, v0, LBq0;->c:Ljava/util/Set;

    .line 98
    invoke-static {v3}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a(LAq0;)Z

    move-result v5

    if-eqz v5, :cond_52

    const/4 v3, 0x0

    :cond_52
    if-eqz v4, :cond_53

    .line 99
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzq0;

    .line 100
    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    goto :goto_19

    :cond_53
    const/4 v5, 0x0

    :cond_54
    if-eqz v0, :cond_59

    .line 101
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :cond_55
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LAq0;

    .line 102
    invoke-static {v6}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a(LAq0;)Z

    move-result v9

    if-eqz v9, :cond_56

    goto :goto_1a

    .line 103
    :cond_56
    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    move-object v3, v6

    goto :goto_1a

    :cond_57
    if-eqz v4, :cond_58

    .line 104
    iget-object v9, v4, LAq0;->c:Ljava/lang/Integer;

    .line 105
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 106
    iget-object v10, v6, LAq0;->c:Ljava/lang/Integer;

    .line 107
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-le v9, v10, :cond_55

    :cond_58
    move-object v4, v6

    goto :goto_1a

    :cond_59
    const/4 v4, 0x0

    :cond_5a
    if-nez v2, :cond_5b

    if-nez v3, :cond_5b

    if-nez v5, :cond_5b

    if-nez v4, :cond_5b

    goto :goto_1d

    :cond_5b
    if-eqz v4, :cond_5c

    new-array v0, v8, [LAq0;

    aput-object v4, v0, v7

    .line 108
    invoke-static {v0}, LsT;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_1b

    :cond_5c
    const/4 v0, 0x0

    :goto_1b
    if-eqz v5, :cond_5d

    new-array v4, v8, [Lzq0;

    aput-object v5, v4, v7

    .line 109
    invoke-static {v4}, LsT;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v4

    goto :goto_1c

    :cond_5d
    const/4 v4, 0x0

    .line 110
    :goto_1c
    new-instance v5, LBq0;

    invoke-direct {v5, v3, v2, v0, v4}, LBq0;-><init>(LAq0;Lzq0;Ljava/util/Set;Ljava/util/Set;)V

    goto :goto_1e

    :cond_5e
    :goto_1d
    const/4 v5, 0x0

    :goto_1e
    if-eqz v5, :cond_64

    .line 111
    invoke-virtual {v5}, LBq0;->a()Z

    move-result v0

    if-eqz v0, :cond_5f

    goto/16 :goto_21

    .line 112
    :cond_5f
    iget-object v0, v5, LBq0;->a:LAq0;

    .line 113
    iget-object v2, v5, LBq0;->b:Lzq0;

    .line 114
    iget-object v3, v5, LBq0;->c:Ljava/util/Set;

    .line 115
    iget-object v4, v5, LBq0;->d:Ljava/util/Set;

    .line 116
    sget-object v5, Lfq0;->G:Lfq0;

    invoke-virtual {v5}, LTF;->c()LFF;

    move-result-object v5

    check-cast v5, Leq0;

    .line 117
    sget-object v6, Liq0;->y:Liq0;

    .line 118
    invoke-virtual {v5, v6}, Leq0;->a(Liq0;)Leq0;

    sget-object v6, Lhq0;->y:Lhq0;

    .line 119
    invoke-virtual {v5, v6}, Leq0;->a(Lhq0;)Leq0;

    if-eqz v0, :cond_60

    .line 120
    invoke-virtual {v0, v8}, LAq0;->a(Z)Lsq0;

    move-result-object v0

    invoke-virtual {v5, v0}, Leq0;->a(Lsq0;)Leq0;

    :cond_60
    if-eqz v3, :cond_61

    .line 121
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LAq0;

    .line 122
    invoke-virtual {v3, v7}, LAq0;->a(Z)Lsq0;

    move-result-object v3

    invoke-virtual {v5, v3}, Leq0;->a(Lsq0;)Leq0;

    goto :goto_1f

    :cond_61
    if-eqz v2, :cond_62

    .line 123
    invoke-virtual {v2, v8}, Lzq0;->a(Z)Lsq0;

    move-result-object v0

    invoke-virtual {v5, v0}, Leq0;->a(Lsq0;)Leq0;

    :cond_62
    if-eqz v4, :cond_63

    .line 124
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzq0;

    .line 125
    invoke-virtual {v2, v7}, Lzq0;->a(Z)Lsq0;

    move-result-object v2

    invoke-virtual {v5, v2}, Leq0;->a(Lsq0;)Leq0;

    goto :goto_20

    .line 126
    :cond_63
    invoke-virtual {v5}, LFF;->e()LTF;

    move-result-object v0

    check-cast v0, Lfq0;

    .line 127
    invoke-virtual {v0}, LfF;->e()[B

    move-result-object v0

    const/16 v2, 0xa

    .line 128
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_64
    :goto_21
    const/4 v0, 0x0

    :goto_22
    if-nez v1, :cond_65

    if-nez v0, :cond_65

    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_65
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "X-Geo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "w"

    const-string v4, " "

    if-eqz v1, :cond_66

    .line 130
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_66
    if-eqz v0, :cond_67

    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_68
    const/4 v0, 0x0

    .line 135
    throw v0
.end method

.method public static a(I)V
    .locals 2

    const-string v0, "Geolocation.HeaderSentOrNot"

    const/16 v1, 0x8

    .line 10
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(LAq0;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 5
    iget-object v1, p0, LAq0;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, LAq0;->a:Ljava/lang/String;

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/16 v1, 0x5f

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_2

    return v0

    .line 8
    :cond_2
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "_nomap"

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "_optout"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static b()V
    .locals 7

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->hasGeolocationPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-wide v0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/omnibox/geo/GeolocationHeader;->a:J

    .line 4
    :cond_1
    sget-object v0, LzT;->a:Landroid/content/Context;

    const-wide/32 v1, 0x493e0

    .line 5
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 6
    invoke-static {v0, v3}, LZp0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    sget-object v3, LZp0;->a:LYp0;

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "location"

    .line 8
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v3, "network"

    .line 9
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 10
    invoke-static {v4}, LZp0;->a(Landroid/location/Location;)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_5

    .line 11
    :cond_4
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    new-instance v1, LYp0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LYp0;-><init>(Landroid/location/LocationManager;LWp0;)V

    sput-object v1, LZp0;->a:LYp0;

    .line 13
    :try_start_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 14
    :catch_0
    sget-object v0, LZp0;->a:LYp0;

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, LYp0;->d:Z

    .line 16
    :cond_5
    :goto_0
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 17
    invoke-static {v0}, LDq0;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static hasGeolocationPermission()Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 3
    sget-object v2, LzT;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 4
    invoke-static {v2, v3, v0, v1}, LdT;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 5
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v2, v4, :cond_1

    .line 6
    sget-object v2, LzT;->a:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 7
    invoke-static {v2, v4, v0, v1}, LdT;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
