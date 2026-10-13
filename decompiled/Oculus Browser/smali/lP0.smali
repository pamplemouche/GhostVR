.class public LlP0;
.super LmP0;
.source "PG"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(LnP0;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p2, p0, LlP0;->a:Ljava/lang/String;

    iput p3, p0, LlP0;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LmP0;-><init>(LkP0;)V

    return-void
.end method


# virtual methods
.method public a(LSf1;)V
    .locals 2

    .line 1
    iget-object v0, p0, LlP0;->a:Ljava/lang/String;

    iget v1, p0, LlP0;->b:I

    check-cast p1, LQf1;

    invoke-virtual {p1, v0, v1}, LQf1;->a(Ljava/lang/String;I)V

    return-void
.end method
