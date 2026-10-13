.class public LW11;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Lorg/chromium/device/geolocation/LocationProviderAdapter;


# direct methods
.method public constructor <init>(Lorg/chromium/device/geolocation/LocationProviderAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, LW11;->w:Lorg/chromium/device/geolocation/LocationProviderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, LW11;->w:Lorg/chromium/device/geolocation/LocationProviderAdapter;

    .line 2
    iget-object v0, v0, Lorg/chromium/device/geolocation/LocationProviderAdapter;->a:LU11;

    .line 3
    invoke-interface {v0}, LU11;->stop()V

    return-void
.end method
