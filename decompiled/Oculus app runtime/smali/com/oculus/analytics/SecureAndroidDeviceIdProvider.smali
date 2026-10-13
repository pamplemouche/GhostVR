.class public Lcom/oculus/analytics/SecureAndroidDeviceIdProvider;
.super Ljava/lang/Object;
.source "SecureAndroidDeviceIdProvider.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/DeviceIdProvider;


# instance fields
.field private final deviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "android_id"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/analytics/SecureAndroidDeviceIdProvider;->deviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/oculus/analytics/SecureAndroidDeviceIdProvider;->deviceId:Ljava/lang/String;

    return-object v0
.end method
