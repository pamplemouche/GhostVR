.class Lcom/oculus/vrshell/util/SecurePendingIntent$Api16Utils;
.super Ljava/lang/Object;
.source "SecurePendingIntent.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/vrshell/util/SecurePendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api16Utils"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClipData(Landroid/content/Intent;)Landroid/content/ClipData;
    .locals 0

    .line 199
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p0

    return-object p0
.end method

.method public static setClipData(Landroid/content/Intent;Landroid/content/ClipData;)V
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    return-void
.end method
