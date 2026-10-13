.class public final synthetic LEr0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LHr0;


# direct methods
.method public constructor <init>(LHr0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEr0;->w:LHr0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, LEr0;->w:LHr0;

    .line 1
    iget-object p1, p1, LHr0;->y:Lcs0;

    check-cast p1, Lhr0;

    invoke-virtual {p1}, Lhr0;->d()V

    return-void
.end method
