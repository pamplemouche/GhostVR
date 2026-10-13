.class public LY11;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFm;
.implements LGm;
.implements Lqu;
.implements LU11;


# instance fields
.field public final a:LHm;

.field public b:Lpu;

.field public c:Z

.field public d:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lsu;->d:Lpu;

    iput-object v0, p0, LY11;->b:Lpu;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "cr_LocationProvider"

    const-string v2, "Google Play Services"

    .line 3
    invoke-static {v1, v2, v0}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    new-instance v0, LEm;

    invoke-direct {v0, p1}, LEm;-><init>(Landroid/content/Context;)V

    sget-object p1, Lsu;->c:Lym;

    const-string v1, "Api must not be null"

    .line 5
    invoke-static {p1, v1}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, LEm;->g:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Lym;->a:Lom;

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 8
    iget-object v1, v0, LEm;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v0, LEm;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string p1, "Listener must not be null"

    .line 9
    invoke-static {p0, p1}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, LEm;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {p0, p1}, Lxp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, LEm;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v0}, LEm;->a()LHm;

    move-result-object p1

    iput-object p1, p0, LY11;->a:LHm;

    return-void

    .line 12
    :cond_0
    throw v2
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    new-instance p1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 3
    iput-object p1, p0, LY11;->d:Lcom/google/android/gms/location/LocationRequest;

    .line 4
    iget-boolean v0, p0, LY11;->c:Z

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v0, 0x1f4

    .line 6
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_3

    .line 7
    :cond_0
    invoke-static {}, LOT0;->d()LOT0;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 8
    sget-object p1, LzT;->a:Landroid/content/Context;

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v0, v5, :cond_2

    const-string v0, "location"

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    if-eqz p1, :cond_1

    .line 11
    invoke-static {p1}, LDU;->a(Landroid/location/LocationManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gps"

    .line 12
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "network"

    .line 13
    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "location_mode"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, LY11;->d:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    goto :goto_2

    .line 16
    :cond_3
    iget-object p1, p0, LY11;->d:Lcom/google/android/gms/location/LocationRequest;

    const/16 v0, 0x66

    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->a(I)Lcom/google/android/gms/location/LocationRequest;

    .line 17
    :goto_2
    iget-object p1, p0, LY11;->d:Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/location/LocationRequest;->a(J)Lcom/google/android/gms/location/LocationRequest;

    .line 18
    :goto_3
    iget-object p1, p0, LY11;->b:Lpu;

    iget-object v0, p0, LY11;->a:LHm;

    check-cast p1, LOt;

    if-eqz p1, :cond_8

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    const-string v1, "GoogleApiClient parameter is required."

    .line 19
    invoke-static {p1, v1}, Lxp;->a(ZLjava/lang/Object;)V

    sget-object p1, Lsu;->a:Lxm;

    invoke-virtual {v0, p1}, LHm;->a(Lqm;)Lwm;

    move-result-object p1

    check-cast p1, LEt;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    const-string v0, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature."

    invoke-static {v2, v0}, Lxp;->b(ZLjava/lang/Object;)V

    .line 20
    :try_start_0
    invoke-virtual {p1}, LEt;->m()Landroid/location/Location;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-object p1, v3

    :goto_6
    if-eqz p1, :cond_6

    .line 21
    invoke-static {p1}, Lorg/chromium/device/geolocation/LocationProviderAdapter;->a(Landroid/location/Location;)V

    .line 22
    :cond_6
    :try_start_1
    iget-object p1, p0, LY11;->b:Lpu;

    iget-object v0, p0, LY11;->a:LHm;

    iget-object v1, p0, LY11;->d:Lcom/google/android/gms/location/LocationRequest;

    .line 23
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->e()Landroid/os/Looper;

    move-result-object v2

    .line 24
    check-cast p1, LOt;

    if-eqz p1, :cond_7

    .line 25
    new-instance p1, LPt;

    invoke-direct {p1, v0, v1, p0, v2}, LPt;-><init>(LHm;Lcom/google/android/gms/location/LocationRequest;Lqu;Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, LHm;->a(LSm;)LSm;

    goto :goto_8

    :cond_7
    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p1

    goto :goto_7

    :catch_2
    move-exception p1

    .line 26
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLocationProviderApi.requestLocationUpdates() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "cr_LocationProvider"

    invoke-static {v2, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to request location updates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Lorg/chromium/device/geolocation/LocationProviderAdapter;->a(Ljava/lang/String;)V

    :goto_8
    return-void

    .line 30
    :cond_8
    throw v3

    .line 31
    :cond_9
    throw v3
.end method

.method public a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const-string v0, "Failed to connect to Google Play Services: "

    .line 32
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-static {p1}, Lorg/chromium/device/geolocation/LocationProviderAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 35
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 36
    iget-object v0, p0, LY11;->a:LHm;

    invoke-virtual {v0}, LHm;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LY11;->a:LHm;

    invoke-virtual {v0}, LHm;->b()V

    .line 37
    :cond_0
    iput-boolean p1, p0, LY11;->c:Z

    .line 38
    iget-object p1, p0, LY11;->a:LHm;

    invoke-virtual {p1}, LHm;->a()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget-object v0, p0, LY11;->a:LHm;

    invoke-virtual {v0}, LHm;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, LY11;->b:Lpu;

    iget-object v1, p0, LY11;->a:LHm;

    check-cast v0, LOt;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, LQt;

    invoke-direct {v0, v1, p0}, LQt;-><init>(LHm;Lqu;)V

    invoke-virtual {v1, v0}, LHm;->a(LSm;)LSm;

    .line 5
    iget-object v0, p0, LY11;->a:LHm;

    invoke-virtual {v0}, LHm;->b()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 6
    throw v0
.end method
