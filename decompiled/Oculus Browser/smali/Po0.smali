.class public LPo0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/CharSequence;

.field public b:Ljava/lang/CharSequence;

.field public final synthetic c:LQo0;


# direct methods
.method public synthetic constructor <init>(LQo0;LOo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LPo0;->c:LQo0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LPo0;->c:LQo0;

    .line 2
    iget-object v0, v0, LQo0;->a:LRo0;

    .line 3
    invoke-interface {v0}, LRo0;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LPo0;->b:Ljava/lang/CharSequence;

    .line 5
    iput-object v0, p0, LPo0;->a:Ljava/lang/CharSequence;

    return-void
.end method
