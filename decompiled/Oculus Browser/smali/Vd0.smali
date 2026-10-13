.class public final synthetic LVd0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field public final w:LYd0;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(LYd0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LVd0;->w:LYd0;

    iput-object p2, p0, LVd0;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6

    iget-object p2, p0, LVd0;->w:LYd0;

    iget-object v0, p0, LVd0;->x:Ljava/lang/String;

    .line 1
    iget-object v1, p2, LYd0;->e:LQd1;

    invoke-virtual {v1}, LLd1;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    move-object v2, p1

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v3, p2, LYd0;->g:LS01;

    invoke-virtual {v3}, LS01;->a()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 3
    iget-object v3, p2, LYd0;->g:LS01;

    invoke-virtual {v3, p1}, LS01;->a(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v3

    .line 4
    iget-object v3, v3, Lorg/chromium/content_public/browser/NavigationEntry;->b:Ljava/lang/String;

    .line 5
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    .line 6
    iget-object v2, p2, LYd0;->c:LCM0;

    .line 7
    invoke-virtual {v2, v0, v1}, LCM0;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8
    :cond_1
    iget-object v3, p2, LYd0;->e:LQd1;

    invoke-virtual {v3, p1}, LLd1;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LPd1;

    iget-object v3, v3, LPd1;->b:Lle1;

    sget-object v4, LXd0;->a:Lke1;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v5}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
