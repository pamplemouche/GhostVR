.class public LV11;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Z

.field public final synthetic x:Lorg/chromium/device/geolocation/LocationProviderAdapter;


# direct methods
.method public constructor <init>(Lorg/chromium/device/geolocation/LocationProviderAdapter;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LV11;->x:Lorg/chromium/device/geolocation/LocationProviderAdapter;

    iput-boolean p2, p0, LV11;->w:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, LV11;->x:Lorg/chromium/device/geolocation/LocationProviderAdapter;

    .line 2
    iget-object v0, v0, Lorg/chromium/device/geolocation/LocationProviderAdapter;->a:LU11;

    .line 3
    iget-boolean v1, p0, LV11;->w:Z

    invoke-interface {v0, v1}, LU11;->a(Z)V

    return-void
.end method
