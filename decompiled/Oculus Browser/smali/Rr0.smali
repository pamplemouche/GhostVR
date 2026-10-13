.class public final synthetic LRr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;


# instance fields
.field public final w:LSr0;

.field public final x:Lle1;


# direct methods
.method public constructor <init>(LSr0;Lle1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRr0;->w:LSr0;

    iput-object p2, p0, LRr0;->x:Lle1;

    return-void
.end method


# virtual methods
.method public onLargeIconAvailable(Landroid/graphics/Bitmap;IZI)V
    .locals 0

    iget-object p2, p0, LRr0;->w:LSr0;

    iget-object p3, p0, LRr0;->x:Lle1;

    .line 1
    iget-object p4, p2, LSr0;->x:LTr0;

    check-cast p4, Lmr0;

    invoke-virtual {p4, p3}, Lmr0;->a(Lle1;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    sget-object p4, Les0;->d:Lke1;

    invoke-virtual {p3, p4, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 3
    sget-object p1, Les0;->c:Lje1;

    const/4 p4, 0x7

    invoke-virtual {p3, p1, p4}, Lle1;->a(Lje1;I)V

    .line 4
    iget-object p1, p2, LSr0;->x:LTr0;

    check-cast p1, Lmr0;

    invoke-virtual {p1}, Lmr0;->h()V

    :cond_1
    :goto_0
    return-void
.end method
