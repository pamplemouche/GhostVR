.class public LcK0;
.super LP10;
.source "PG"


# instance fields
.field public final synthetic a:LkK0;


# direct methods
.method public constructor <init>(LkK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LcK0;->a:LkK0;

    invoke-direct {p0}, LP10;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, LcK0;->a:LkK0;

    .line 2
    invoke-virtual {v0}, LkK0;->c()V

    return-void
.end method
