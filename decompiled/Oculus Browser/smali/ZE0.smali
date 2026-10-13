.class public final synthetic LZE0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LjF0;


# direct methods
.method public constructor <init>(LjF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZE0;->w:LjF0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LZE0;->w:LjF0;

    .line 1
    iget-object v1, v0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 2
    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninView;->H:Lorg/chromium/ui/widget/ButtonCompat;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object v1, v0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 5
    iget-object v1, v1, Lorg/chromium/chrome/browser/signin/SigninView;->J:Landroid/widget/Button;

    const/16 v2, 0x8

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 7
    iget-object v0, v0, LjF0;->w0:Lorg/chromium/chrome/browser/signin/SigninView;

    .line 8
    iget-object v0, v0, Lorg/chromium/chrome/browser/signin/SigninView;->w:Lorg/chromium/chrome/browser/signin/SigninScrollView;

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/signin/SigninScrollView;->a(Ljava/lang/Runnable;)V

    return-void
.end method
