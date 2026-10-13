.class public final synthetic LmL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final w:LpL0;


# direct methods
.method public constructor <init>(LpL0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LmL0;->w:LpL0;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LmL0;->w:LpL0;

    .line 1
    iget-object v1, v0, LpL0;->b:Lle1;

    sget-object v2, LsL0;->a:Lhe1;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lle1;->a(Lhe1;Z)V

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v3, "PasswordManager.TouchToFill.UserAction"

    .line 2
    invoke-static {v3, v1, v2}, LfV;->a(Ljava/lang/String;II)V

    .line 3
    iget-object v0, v0, LpL0;->a:LhL0;

    invoke-interface {v0}, LhL0;->b()V

    return-void
.end method
