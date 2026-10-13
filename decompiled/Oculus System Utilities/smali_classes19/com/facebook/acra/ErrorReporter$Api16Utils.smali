.class final Lcom/facebook/acra/ErrorReporter$Api16Utils;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# annotations
.annotation build Lcom/facebook/annotations/DoNotOptimize;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/ErrorReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api16Utils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyBigTextStyle(Landroid/app/Notification$Builder;Ljava/lang/String;)V
    .locals 1
    .param p0, "nb"    # Landroid/app/Notification$Builder;
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3681
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 3682
    return-void
.end method
