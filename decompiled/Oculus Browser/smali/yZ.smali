.class public final synthetic LyZ;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/FaviconHelper$FaviconImageCallback;


# instance fields
.field public final w:LCZ;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(LCZ;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LyZ;->w:LCZ;

    iput-object p2, p0, LyZ;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    iget-object p2, p0, LyZ;->w:LCZ;

    iget-object v0, p0, LyZ;->x:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p2, LCZ;->F:LCa0;

    if-nez p1, :cond_0

    new-instance p1, LCa0;

    invoke-direct {p1}, LCa0;-><init>()V

    iput-object p1, p2, LCZ;->F:LCa0;

    .line 2
    :cond_0
    iget-object p1, p2, LCZ;->F:LCa0;

    iget-object v1, p2, LCZ;->x:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v1, v0, v2}, LCa0;->a(Landroid/content/res/Resources;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p2, LCZ;->A:LS01;

    invoke-virtual {v2}, LS01;->a()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 6
    iget-object v2, p2, LCZ;->A:LS01;

    invoke-virtual {v2, v1}, LS01;->a(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v2

    .line 7
    iget-object v3, v2, Lorg/chromium/content_public/browser/NavigationEntry;->b:Ljava/lang/String;

    .line 8
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iput-object p1, v2, Lorg/chromium/content_public/browser/NavigationEntry;->e:Landroid/graphics/Bitmap;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p2, LCZ;->B:LBZ;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
