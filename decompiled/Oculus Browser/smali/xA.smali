.class public final synthetic LxA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LWx;


# static fields
.field public static final a:LWx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LxA;

    invoke-direct {v0}, LxA;-><init>()V

    sput-object v0, LxA;->a:LWx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LTF;)Ljava/lang/String;
    .locals 0

    check-cast p1, LbJ;

    .line 1
    iget-object p1, p1, LbJ;->D:Ljava/lang/String;

    return-object p1
.end method
