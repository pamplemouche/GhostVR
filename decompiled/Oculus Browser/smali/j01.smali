.class public final synthetic Lj01;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lt01;


# static fields
.field public static final a:Lt01;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj01;

    invoke-direct {v0}, Lj01;-><init>()V

    sput-object v0, Lj01;->a:Lt01;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    invoke-direct {v0, p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object v0
.end method
