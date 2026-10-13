.class public final synthetic LoA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LWx;


# static fields
.field public static final a:LWx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LoA;

    invoke-direct {v0}, LoA;-><init>()V

    sput-object v0, LoA;->a:LWx;

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

    check-cast p1, LXI;

    .line 1
    iget-object p1, p1, LXI;->C:Ljava/lang/String;

    return-object p1
.end method
