.class public final synthetic LXm0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXm0;->w:Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LXm0;->w:Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->y:Z

    .line 2
    iget-object v2, v0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->x:LRb1;

    invoke-virtual {v2}, LRb1;->stop()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/ntp/cards/ProgressIndicatorView;->x:LRb1;

    invoke-virtual {v0}, LRb1;->start()V

    return-void
.end method
