.class public final synthetic LwA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LXx;


# static fields
.field public static final a:LXx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LwA;

    invoke-direct {v0}, LwA;-><init>()V

    sput-object v0, LwA;->a:LXx;

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

    check-cast p1, LZI;

    invoke-virtual {p1, p2}, LZI;->a(Ljava/lang/String;)LZI;

    return-void
.end method
