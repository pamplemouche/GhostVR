.class public LRd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:LNc;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionBarContextView;LNc;)V
    .locals 0

    .line 1
    iput-object p2, p0, LRd;->w:LNc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, LRd;->w:LNc;

    invoke-virtual {p1}, LNc;->a()V

    return-void
.end method
