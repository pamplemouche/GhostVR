.class public LdL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lot0;


# instance fields
.field public final synthetic w:LfL0;


# direct methods
.method public constructor <init>(LfL0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LdL0;->w:LfL0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, LdL0;->w:LfL0;

    .line 2
    iget-object v0, v0, LfL0;->a:LQK0;

    .line 3
    invoke-static {}, Lpt0;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, LQK0;->c(Z)V

    return-void
.end method
