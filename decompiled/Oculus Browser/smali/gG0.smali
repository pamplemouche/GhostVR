.class public LgG0;
.super LUg;
.source "PG"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LUg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 1
    iget-boolean p1, p0, LgG0;->a:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    return-void

    :cond_1
    const-string p2, "Suggestions.ScrolledAfterOpen"

    .line 2
    invoke-static {p2}, LhV;->a(Ljava/lang/String;)V

    .line 3
    iput-boolean p1, p0, LgG0;->a:Z

    return-void
.end method
