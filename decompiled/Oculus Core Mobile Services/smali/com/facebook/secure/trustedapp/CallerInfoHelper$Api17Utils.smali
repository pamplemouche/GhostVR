.class Lcom/facebook/secure/trustedapp/CallerInfoHelper$Api17Utils;
.super Ljava/lang/Object;
.source "CallerInfoHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/secure/trustedapp/CallerInfoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api17Utils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCreatorPackage(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCreatorUid(Landroid/app/PendingIntent;)I
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v0

    return v0
.end method
