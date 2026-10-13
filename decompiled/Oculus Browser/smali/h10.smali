.class public final synthetic Lh10;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final w:Lq10;


# direct methods
.method public constructor <init>(Lq10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh10;->w:Lq10;

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Lh10;->w:Lq10;

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p1, Lq10;->Y:Z

    .line 2
    invoke-virtual {p1}, Lq10;->d()V

    return-void
.end method
