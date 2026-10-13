.class public Lge0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LMd0;


# instance fields
.field public final a:Lorg/chromium/chrome/browser/tab/Tab;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lge0;->a:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object p1

    invoke-virtual {p1}, LQ8;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f130580

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lge0;->b:Ljava/lang/String;

    return-void
.end method
