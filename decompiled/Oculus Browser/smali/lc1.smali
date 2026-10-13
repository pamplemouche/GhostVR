.class public Llc1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:Lnc1;


# direct methods
.method public constructor <init>(Lnc1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llc1;->w:Lnc1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Llc1;->w:Lnc1;

    .line 2
    iget-object p3, p2, Lnc1;->w:Landroid/view/View;

    if-ne p1, p3, :cond_0

    .line 3
    invoke-virtual {p2}, Lnc1;->a()V

    :cond_0
    return-void
.end method
