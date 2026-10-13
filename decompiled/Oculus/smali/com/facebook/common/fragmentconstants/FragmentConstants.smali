.class public final Lcom/facebook/common/fragmentconstants/FragmentConstants;
.super Ljava/lang/Object;
.source "FragmentConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/fragmentconstants/FragmentConstants$ContentFragmentType;
    }
.end annotation


# static fields
.field public static final DEBUGGABLE_CONTENT_FRAGMENT_TAGS:[Ljava/lang/String;

.field public static LAST_TYPE:I

.field public static TREEHOUSE_BASIC_MODEL:Ljava/lang/String;

.field public static TREEHOUSE_NAME_HINT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1756
    const/16 v0, 0x2e3

    sput v0, Lcom/facebook/common/fragmentconstants/FragmentConstants;->LAST_TYPE:I

    .line 1800
    const-string/jumbo v0, "treehouse_basic_model"

    sput-object v0, Lcom/facebook/common/fragmentconstants/FragmentConstants;->TREEHOUSE_BASIC_MODEL:Ljava/lang/String;

    .line 1802
    const-string/jumbo v0, "treehouse_name_hint"

    sput-object v0, Lcom/facebook/common/fragmentconstants/FragmentConstants;->TREEHOUSE_NAME_HINT:Ljava/lang/String;

    .line 1805
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "chromeless:content:fragment:tag"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ufi:popover:content:fragment:tag"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "transliteration:fragment:tag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/common/fragmentconstants/FragmentConstants;->DEBUGGABLE_CONTENT_FRAGMENT_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
