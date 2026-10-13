.class public final synthetic Lnw0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfw0;


# instance fields
.field public final a:Low0;


# direct methods
.method public constructor <init>(Low0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnw0;->a:Low0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lnw0;->a:Low0;

    .line 1
    iget-object v0, v0, Low0;->a:Lpw0;

    .line 2
    iget-object v0, v0, Lpw0;->z:Lew0;

    .line 3
    check-cast v0, Lhv0;

    .line 4
    iget-object v0, v0, Lhv0;->a:Lyv0;

    .line 5
    iget-object v1, v0, Lyv0;->K:LHu0;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LHu0;->a(I)V

    const/4 v1, 0x1

    const-string v2, "User closed the Payment Request UI."

    .line 6
    invoke-virtual {v0, v2, v1}, Lyv0;->a(Ljava/lang/String;I)V

    return-void
.end method
