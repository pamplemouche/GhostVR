.class public LuG0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LHA0;


# instance fields
.field public final synthetic w:LvG0;


# direct methods
.method public constructor <init>(LvG0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LuG0;->w:LvG0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, LuG0;->w:LvG0;

    iget-object v0, v0, LvG0;->x:LnU;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LnU;->a(Ljava/lang/Object;)V

    return-void
.end method
