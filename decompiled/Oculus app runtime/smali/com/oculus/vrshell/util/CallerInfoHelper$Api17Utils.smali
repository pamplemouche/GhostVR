.class Lcom/oculus/vrshell/util/CallerInfoHelper$Api17Utils;
.super Ljava/lang/Object;
.source "CallerInfoHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/util/CallerInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Utils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCreatorPackage(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 0

    .line 295
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCreatorUid(Landroid/app/PendingIntent;)I
    .locals 0

    .line 291
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result p0

    return p0
.end method
