.class public LOn0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:LKR0;

.field public final synthetic b:LQn0;


# direct methods
.method public constructor <init>(LQn0;LKR0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LOn0;->b:LQn0;

    iput-object p2, p0, LOn0;->a:LKR0;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LOn0;->b:LQn0;

    .line 2
    invoke-virtual {v0}, LKn0;->a()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, LOn0;->a:LKR0;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, LKR0;->a(Z)V

    return-void
.end method
