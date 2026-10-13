.class public LSd0;
.super LzQ0;
.source "PG"


# instance fields
.field public final synthetic w:LTd0;


# direct methods
.method public constructor <init>(LTd0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LSd0;->w:LTd0;

    invoke-direct {p0}, LzQ0;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    iget-object p1, p0, LSd0;->w:LTd0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LTd0;->a(Z)V

    return-void
.end method
