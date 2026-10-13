.class public final synthetic LbF0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:LjF0;


# direct methods
.method public constructor <init>(LjF0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LbF0;->w:LjF0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, LbF0;->w:LjF0;

    .line 1
    invoke-virtual {p1}, LjF0;->O()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, LjF0;->e()V

    :goto_0
    return-void
.end method
