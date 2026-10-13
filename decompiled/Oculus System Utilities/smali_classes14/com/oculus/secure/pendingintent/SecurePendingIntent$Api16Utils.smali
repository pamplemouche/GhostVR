.class Lcom/oculus/secure/pendingintent/SecurePendingIntent$Api16Utils;
.super Ljava/lang/Object;
.source "SecurePendingIntent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/secure/pendingintent/SecurePendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Utils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClipData(Landroid/content/Intent;)Landroid/content/ClipData;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    return-object v0
.end method

.method public static setClipData(Landroid/content/Intent;Landroid/content/ClipData;)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "clipData"    # Landroid/content/ClipData;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 195
    return-void
.end method
