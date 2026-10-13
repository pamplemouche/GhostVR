.class public LLf0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lvf0;


# instance fields
.field public final synthetic w:LNf0;


# direct methods
.method public constructor <init>(LNf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LLf0;->w:LNf0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, LLf0;->w:LNf0;

    .line 2
    iget-object v0, v0, LNf0;->G:LMf0;

    .line 3
    check-cast v0, Lsf0;

    invoke-virtual {v0, p1}, Lsf0;->a(I)V

    return-void
.end method

.method public a(LIf0;)V
    .locals 1

    .line 4
    iget-object v0, p0, LLf0;->w:LNf0;

    .line 5
    iget-object v0, v0, LNf0;->G:LMf0;

    .line 6
    check-cast v0, Lsf0;

    invoke-virtual {v0, p1}, Lsf0;->a(LIf0;)V

    return-void
.end method
