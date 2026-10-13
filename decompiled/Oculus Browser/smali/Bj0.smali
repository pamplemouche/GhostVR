.class public final synthetic LBj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEj0;


# static fields
.field public static final a:LEj0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LBj0;

    invoke-direct {v0}, LBj0;-><init>()V

    sput-object v0, LBj0;->a:LEj0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LDj0;)V
    .locals 1

    .line 1
    check-cast p1, Lxj0;

    .line 2
    iget-object v0, p1, Lxj0;->w:Lnk0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lxj0;->c()V

    .line 4
    iget-object p1, p1, Lxj0;->w:Lnk0;

    invoke-virtual {p1}, Lnk0;->a()Lok0;

    move-result-object p1

    invoke-static {p1}, Lxk0;->a(Lok0;)V

    :goto_0
    return-void
.end method
