.class public LMx0;
.super Ldh;
.source "PG"

# interfaces
.implements Lvx0;


# instance fields
.field public P:LTx0;

.field public final Q:Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;

.field public R:LLx0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ldh;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, LMx0;->Q:Lorg/chromium/chrome/browser/photo_picker/PickerBitmapView;

    return-void
.end method


# virtual methods
.method public p()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, LMx0;->R:LLx0;

    if-eqz v0, :cond_1

    .line 2
    iget v0, v0, LLx0;->y:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LMx0;->R:LLx0;

    .line 4
    iget-object v0, v0, LLx0;->w:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
