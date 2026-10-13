.class public LNi0;
.super LP01;
.source "PG"


# instance fields
.field public final synthetic b:Lorg/chromium/chrome/browser/media/PictureInPictureActivity;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/media/PictureInPictureActivity;LO01;)V
    .locals 0

    .line 1
    iput-object p1, p0, LNi0;->b:Lorg/chromium/chrome/browser/media/PictureInPictureActivity;

    invoke-direct {p0, p2}, LP01;-><init>(LO01;)V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 0

    .line 1
    iget-object p1, p0, LNi0;->b:Lorg/chromium/chrome/browser/media/PictureInPictureActivity;

    invoke-static {p1}, Lorg/chromium/chrome/browser/media/PictureInPictureActivity;->a(Lorg/chromium/chrome/browser/media/PictureInPictureActivity;)Landroid/app/PictureInPictureParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    return-void
.end method
