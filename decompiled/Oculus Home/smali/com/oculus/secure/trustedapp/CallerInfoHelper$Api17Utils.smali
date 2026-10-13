.class Lcom/oculus/secure/trustedapp/CallerInfoHelper$Api17Utils;
.super Ljava/lang/Object;
.source "CallerInfoHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/secure/trustedapp/CallerInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Utils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCreatorPackage(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCreatorUid(Landroid/app/PendingIntent;)I
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    return v0
.end method
