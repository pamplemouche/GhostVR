.class public final synthetic LtA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LXx;


# static fields
.field public static final a:LXx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LtA;

    invoke-direct {v0}, LtA;-><init>()V

    sput-object v0, LtA;->a:LXx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LFF;Ljava/lang/String;)V
    .locals 0

    check-cast p1, LdJ;

    invoke-virtual {p1, p2}, LdJ;->b(Ljava/lang/String;)LdJ;

    return-void
.end method
