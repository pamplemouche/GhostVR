.class public final synthetic LOU;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LrU;


# static fields
.field public static final a:LrU;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOU;

    invoke-direct {v0}, LOU;-><init>()V

    sput-object v0, LOU;->a:LrU;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, LSU;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
