.class public Lla;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static d:Lla;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/location/LocationManager;

.field public final c:Lka;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lka;

    invoke-direct {v0}, Lka;-><init>()V

    iput-object v0, p0, Lla;->c:Lka;

    .line 3
    iput-object p1, p0, Lla;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lla;->b:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lla;->c:Lka;

    .line 2
    iget-wide v2, v1, Lka;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-lez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    iget-boolean v1, v1, Lka;->a:Z

    return v1

    .line 4
    :cond_1
    iget-object v2, v0, Lla;->a:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v3}, LZ3;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const-string v2, "network"

    .line 5
    :try_start_0
    iget-object v4, v0, Lla;->b:Landroid/location/LocationManager;

    invoke-virtual {v4, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6
    iget-object v4, v0, Lla;->b:Landroid/location/LocationManager;

    invoke-virtual {v4, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    move-object v2, v3

    .line 7
    :goto_1
    iget-object v4, v0, Lla;->a:Landroid/content/Context;

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v4, v5}, LZ3;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "gps"

    .line 8
    :try_start_1
    iget-object v5, v0, Lla;->b:Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    iget-object v5, v0, Lla;->b:Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    nop

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 10
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v10, v4, v8

    if-lez v10, :cond_5

    :goto_3
    move-object v2, v3

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz v2, :cond_c

    .line 11
    iget-object v3, v0, Lla;->c:Lka;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 13
    sget-object v8, Lja;->d:Lja;

    if-nez v8, :cond_6

    .line 14
    new-instance v8, Lja;

    invoke-direct {v8}, Lja;-><init>()V

    sput-object v8, Lja;->d:Lja;

    .line 15
    :cond_6
    sget-object v8, Lja;->d:Lja;

    const-wide/32 v16, 0x5265c00

    sub-long v10, v4, v16

    .line 16
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    move-object v9, v8

    .line 17
    invoke-virtual/range {v9 .. v15}, Lja;->a(JDD)V

    .line 18
    iget-wide v13, v8, Lja;->a:J

    .line 19
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object v15, v8

    move-wide v9, v4

    move-wide/from16 v20, v13

    move-wide/from16 v13, v18

    invoke-virtual/range {v8 .. v14}, Lja;->a(JDD)V

    .line 20
    iget v8, v15, Lja;->c:I

    if-ne v8, v6, :cond_7

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    .line 21
    :goto_5
    iget-wide v7, v15, Lja;->b:J

    .line 22
    iget-wide v12, v15, Lja;->a:J

    add-long v10, v4, v16

    .line 23
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    move-object v9, v15

    move-object v2, v1

    move-wide v0, v12

    move-wide/from16 v12, v16

    move-object/from16 v16, v2

    move-object v2, v15

    move-wide/from16 v14, v18

    .line 24
    invoke-virtual/range {v9 .. v15}, Lja;->a(JDD)V

    .line 25
    iget-wide v9, v2, Lja;->b:J

    const-wide/16 v11, 0x0

    const-wide/16 v13, -0x1

    cmp-long v2, v7, v13

    if-eqz v2, :cond_b

    cmp-long v2, v0, v13

    if-nez v2, :cond_8

    goto :goto_7

    :cond_8
    cmp-long v2, v4, v0

    if-lez v2, :cond_9

    add-long/2addr v11, v9

    goto :goto_6

    :cond_9
    cmp-long v2, v4, v7

    if-lez v2, :cond_a

    add-long/2addr v11, v0

    goto :goto_6

    :cond_a
    add-long/2addr v11, v7

    :goto_6
    const-wide/32 v4, 0xea60

    add-long/2addr v11, v4

    goto :goto_8

    :cond_b
    :goto_7
    const-wide/32 v11, 0x2932e00

    add-long/2addr v11, v4

    .line 26
    :goto_8
    iput-boolean v6, v3, Lka;->a:Z

    move-wide/from16 v4, v20

    .line 27
    iput-wide v4, v3, Lka;->b:J

    .line 28
    iput-wide v7, v3, Lka;->c:J

    .line 29
    iput-wide v0, v3, Lka;->d:J

    .line 30
    iput-wide v9, v3, Lka;->e:J

    .line 31
    iput-wide v11, v3, Lka;->f:J

    move-object/from16 v0, v16

    .line 32
    iget-boolean v0, v0, Lka;->a:Z

    return v0

    :cond_c
    const-string v0, "TwilightManager"

    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_e

    const/16 v1, 0x16

    if-lt v0, v1, :cond_d

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    :cond_e
    :goto_9
    return v6
.end method
