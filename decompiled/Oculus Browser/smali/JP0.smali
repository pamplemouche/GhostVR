.class public final synthetic LJP0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lne1;


# static fields
.field public static final a:Lne1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LJP0;

    invoke-direct {v0}, LJP0;-><init>()V

    sput-object v0, LJP0;->a:Lne1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lle1;

    check-cast p2, LIP0;

    check-cast p3, LUd1;

    invoke-static {p1, p2, p3}, LLP0;->a(Lle1;LIP0;LUd1;)V

    return-void
.end method
