.class public final synthetic Lgs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;


# instance fields
.field public final w:Ljs0;

.field public final x:Lle1;


# direct methods
.method public constructor <init>(Ljs0;Lle1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgs0;->w:Ljs0;

    iput-object p2, p0, Lgs0;->x:Lle1;

    return-void
.end method


# virtual methods
.method public onLargeIconAvailable(Landroid/graphics/Bitmap;IZI)V
    .locals 0

    iget-object p2, p0, Lgs0;->w:Ljs0;

    iget-object p3, p0, Lgs0;->x:Lle1;

    .line 1
    iget-object p4, p2, Ljs0;->K:LTr0;

    check-cast p4, Lmr0;

    invoke-virtual {p4, p3}, Lmr0;->a(Lle1;)Z

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p4, Lks0;->e:Lke1;

    invoke-virtual {p3, p4, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p2, Ljs0;->K:LTr0;

    check-cast p1, Lmr0;

    invoke-virtual {p1}, Lmr0;->h()V

    :goto_0
    return-void
.end method
