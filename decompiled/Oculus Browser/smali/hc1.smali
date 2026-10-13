.class public Lhc1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic w:Ljc1;


# direct methods
.method public constructor <init>(Ljc1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhc1;->w:Ljc1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Lhc1;->w:Ljc1;

    .line 2
    iget-object p3, p2, Ljc1;->x:Landroid/view/View;

    if-ne p1, p3, :cond_0

    .line 3
    invoke-virtual {p2}, Ljc1;->a()V

    :cond_0
    return-void
.end method
