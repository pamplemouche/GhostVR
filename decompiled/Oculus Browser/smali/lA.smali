.class public final synthetic LlA;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LXx;


# static fields
.field public static final a:LXx;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LlA;

    invoke-direct {v0}, LlA;-><init>()V

    sput-object v0, LlA;->a:LXx;

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

    check-cast p1, LBI;

    invoke-virtual {p1, p2}, LBI;->a(Ljava/lang/String;)LBI;

    return-void
.end method
