.class public Lm00;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ls00;


# instance fields
.field public final synthetic a:Ln00;


# direct methods
.method public constructor <init>(Ln00;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm00;->a:Ln00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm00;->a:Ln00;

    .line 2
    iget-object v0, v0, Ln00;->x:LdI0;

    .line 3
    invoke-interface {v0, p1}, LdI0;->c(I)Z

    move-result p1

    return p1
.end method
