.class public LoY;
.super LUH0;
.source "PG"


# instance fields
.field public final synthetic a:LpY;


# direct methods
.method public constructor <init>(LpY;)V
    .locals 0

    .line 1
    iput-object p1, p0, LoY;->a:LpY;

    invoke-direct {p0}, LUH0;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .line 1
    iget-object v0, p0, LoY;->a:LpY;

    invoke-virtual {v0}, LpY;->b()V

    return-void
.end method
