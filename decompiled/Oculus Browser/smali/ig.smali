.class public Lig;
.super Landroid/database/DataSetObserver;
.source "PG"


# instance fields
.field public final synthetic a:Lmg;


# direct methods
.method public constructor <init>(Lmg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lig;->a:Lmg;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lig;->a:Lmg;

    invoke-virtual {v0}, Lmg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lig;->a:Lmg;

    invoke-virtual {v0}, Lmg;->a()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lig;->a:Lmg;

    invoke-virtual {v0}, Lmg;->dismiss()V

    return-void
.end method
