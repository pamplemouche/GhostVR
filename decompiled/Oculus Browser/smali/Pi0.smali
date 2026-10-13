.class public LPi0;
.super LSG0;
.source "PG"


# instance fields
.field public w:Lorg/chromium/chrome/browser/media/PictureInPictureActivity;

.field public x:LOi0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LSG0;-><init>()V

    .line 2
    sget-object v0, LOi0;->w:LOi0;

    iput-object v0, p0, LPi0;->x:LOi0;

    return-void
.end method


# virtual methods
.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    sget-object p1, LOi0;->x:LOi0;

    iput-object p1, p0, LPi0;->x:LOi0;

    .line 2
    iget-object p1, p0, LPi0;->w:Lorg/chromium/chrome/browser/media/PictureInPictureActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->n:Z

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->a0()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    :cond_0
    sget-object p1, LOi0;->x:LOi0;

    iput-object p1, p0, LPi0;->x:LOi0;

    .line 4
    iget-object p1, p0, LPi0;->w:Lorg/chromium/chrome/browser/media/PictureInPictureActivity;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
