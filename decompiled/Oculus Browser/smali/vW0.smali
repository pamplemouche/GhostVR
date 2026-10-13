.class public final synthetic LvW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lt01;


# static fields
.field public static final a:Lt01;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LvW0;

    invoke-direct {v0}, LvW0;-><init>()V

    sput-object v0, LvW0;->a:Lt01;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, LwW0;->a(Lorg/chromium/content_public/browser/WebContents;)LxW0;

    move-result-object p1

    return-object p1
.end method
