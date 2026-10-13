.class public LZr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic w:Las0;


# direct methods
.method public constructor <init>(Las0;Lbs0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZr0;->w:Las0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, LZr0;->w:Las0;

    iget-object p1, p1, Las0;->B:Lbs0;

    .line 2
    iget-object p1, p1, Lbs0;->x:Lcs0;

    .line 3
    check-cast p1, Lhr0;

    invoke-virtual {p1}, Lhr0;->b()V

    const/4 p1, 0x1

    return p1
.end method
