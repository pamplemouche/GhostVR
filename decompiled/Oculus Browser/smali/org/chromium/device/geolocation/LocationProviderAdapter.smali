.class public Lorg/chromium/device/geolocation/LocationProviderAdapter;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LU11;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/chromium/device/geolocation/LocationProviderFactory;->a:LU11;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    sget-boolean v0, Lorg/chromium/device/geolocation/LocationProviderFactory;->b:Z

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, LzT;->a:Landroid/content/Context;

    .line 5
    sget-object v1, Ldm;->d:Ldm;

    .line 6
    sget v2, Lem;->a:I

    invoke-virtual {v1, v0, v2}, Lem;->a(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    new-instance v0, LY11;

    .line 8
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 9
    invoke-direct {v0, v1}, LY11;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/device/geolocation/LocationProviderFactory;->a:LU11;

    goto :goto_1

    .line 10
    :cond_2
    new-instance v0, LX11;

    invoke-direct {v0}, LX11;-><init>()V

    sput-object v0, Lorg/chromium/device/geolocation/LocationProviderFactory;->a:LU11;

    .line 11
    :goto_1
    sget-object v0, Lorg/chromium/device/geolocation/LocationProviderFactory;->a:LU11;

    .line 12
    :goto_2
    iput-object v0, p0, Lorg/chromium/device/geolocation/LocationProviderAdapter;->a:LU11;

    return-void
.end method

.method public static a(Landroid/location/Location;)V
    .locals 20

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v6

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    float-to-double v10, v10

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasBearing()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getBearing()F

    move-result v13

    float-to-double v13, v13

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v15

    move-wide/from16 v18, v0

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v18

    .line 6
    invoke-static/range {v0 .. v17}, LJ/N;->MvJnRjJi(DDDZDZDZDZD)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v1, "cr_LocationProvider"

    const-string v2, "newErrorAvailable %s"

    .line 7
    invoke-static {v1, v2, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    invoke-static {p0}, LJ/N;->M8Iz7Ptw(Ljava/lang/String;)V

    return-void
.end method

.method public static create()Lorg/chromium/device/geolocation/LocationProviderAdapter;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/device/geolocation/LocationProviderAdapter;

    invoke-direct {v0}, Lorg/chromium/device/geolocation/LocationProviderAdapter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public start(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, LV11;

    invoke-direct {v1, p0, p1}, LV11;-><init>(Lorg/chromium/device/geolocation/LocationProviderAdapter;Z)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2
    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, LW11;

    invoke-direct {v1, p0}, LW11;-><init>(Lorg/chromium/device/geolocation/LocationProviderAdapter;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2
    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    return-void
.end method
