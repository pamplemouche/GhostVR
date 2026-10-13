.class public LSA0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;


# instance fields
.field public final synthetic w:LUA0;

.field public final synthetic x:Ljava/lang/String;

.field public final synthetic y:LTA0;


# direct methods
.method public constructor <init>(LTA0;LUA0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSA0;->y:LTA0;

    iput-object p2, p0, LSA0;->w:LUA0;

    iput-object p3, p0, LSA0;->x:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLargeIconAvailable(Landroid/graphics/Bitmap;IZI)V
    .locals 6

    .line 1
    iget-object p3, p0, LSA0;->w:LUA0;

    iget-object p3, p3, LUA0;->c:Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;

    if-eq p0, p3, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, LSA0;->x:Ljava/lang/String;

    iget-object p3, p0, LSA0;->y:LTA0;

    .line 3
    iget-object v3, p3, LTA0;->y:LCM0;

    .line 4
    iget-object p3, p3, LTA0;->z:Lorg/chromium/chrome/browser/preferences/privacy/ConfirmImportantSitesDialogFragment;

    invoke-virtual {p3}, Lz2;->v()Landroid/content/res/Resources;

    move-result-object v4

    iget-object p3, p0, LSA0;->y:LTA0;

    .line 5
    iget v5, p3, LTA0;->x:I

    move-object v0, p1

    move v2, p2

    .line 6
    invoke-static/range {v0 .. v5}, LEa0;->a(Landroid/graphics/Bitmap;Ljava/lang/String;ILCM0;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 7
    iget-object p2, p0, LSA0;->w:LUA0;

    iget-object p2, p2, LUA0;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
